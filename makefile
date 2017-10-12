SHELL = /bin/bash
INSTALL = /usr/bin/install
LINBIN = /opt/Elephant
MACBIN = ~/Applications
MACAPP = Elephant.app
BUILD = build
MKDIR = mkdir -p
RED = \033[31m
END = \033[0m
USAGE = @echo -e "Usage: $(RED)make mac|linux|clean$(END)"

all:
	$(USAGE)

linux:
	$(MKDIR) $(LINBIN)
	$(INSTALL) -m 755 src/Elephant.py $(LINBIN)
	$(INSTALL) -m 755 src/oauth.py $(LINBIN)
	$(INSTALL) -m 755 -d src/img $(LINBIN)
	ln -s /opt/Elephant/Elephant.py /usr/local/bin/Elephant

mac:
	$(MKDIR) $(MACBIN)
	$(INSTALL) -m 755 src/Elephant.app -d $(MACBIN)/$(MACAPP)/Contents/Resources/
	$(INSTALL) -m 755 src/oauth.py $(MACBIN)/$(MACAPP)/Contents/Resources/
	$(INSTALL) -m 755 src/img -d $(MACBIN)/$(MACAPP)/Contents/Resources/

clean:
	$(RM) $(TARGET)
