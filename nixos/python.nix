{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    (python311.withPackages (ps:
      with ps; [
        pip
        glib
        tqdm
        black # Python formatter
        pynvim
	netifaces
	psutil
        flake8 # Linter for Python
        pygobject3 # Python bindings for Glib
        gst-python # Python bindings for GStreamer
      ]))
  ];
}
