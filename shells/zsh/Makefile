# $OpenBSD: Makefile,v 1.6 1999/03/14 07:54:05 brad Exp $

DISTNAME=       zsh-3.0.5
CATEGORIES=	shells
MASTER_SITES=	ftp://ftp.zsh.org/zsh/ \
		ftp://ftp.math.gatech.edu/pub/zsh/ \
		ftp://ftp.sterling.com/zsh/ \
		ftp://ftp.rge.com/pub/zsh/ \
		ftp://ftp.cenatls.cena.dgac.fr/pub/shells/zsh/ \
		ftp://mrrl.lut.ac.uk/zsh/ \
		ftp://ftp.fu-berlin.de/pub/unix/shells/zsh/ \
		ftp://ftp.ips.oz.au/pub/packages/zsh/ \
		ftp://ftp.uit.no/pub/unix/shells/zsh/

MAINTAINER=	gene@OpenBSD.ORG

GNU_CONFIGURE=	yes

MAN1=		zsh.1 zshbuiltins.1 zshcompctl.1 zshexpn.1 zshmisc.1 \
		zshoptions.1 zshall.1 zshparam.1 zshzle.1

# If you want to build a static binary, uncomment the following line
#LDFLAGS+=-static

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/zsh.info ${PREFIX}/info/dir
	@$(ECHO)
	@$(ECHO) "Finished installing $(DISTNAME)"
	@$(ECHO) "To complete the install, you should notify the system"
	@$(ECHO) "that $(PREFIX)/bin/zsh is a valid shell by adding it to"
	@$(ECHO) "/etc/shells."
	@$(ECHO) "If you are unfamiliar with this file, consult the shells(5)"
	@$(ECHO) "manual page."

.include <bsd.port.mk>
