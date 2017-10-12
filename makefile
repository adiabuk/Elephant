SHELL = /bin/bash
INSTALL = /usr/bin/install
LINBIN = /opt/Elephant
BUILD = build
MKDIR = mkdir -p
RED = \033[31m
END = \033[0m
USAGE = @echo -e "Usage: $(RED)make linux|clean$(END)"

all:
	$(USAGE)

linux:
	$(MKDIR) $(LINBIN)
	$(INSTALL) -m 755 src/Elephant.py $(LINBIN)
	$(INSTALL) -m 755 src/oauth.py $(LINBIN)
	$(INSTALL) -m 755 src/img $(LINBIN)

clean:
	$(RM) $(LINBIN)
