# OpenBSD makefile for:	zsh
# Version required:     	3.0.5
# Date created:			17 November 1997
# Whom:				gene
#
# $OpenBSD: Makefile,v 1.3 1997/11/19 01:07:55 joey Exp $
#

DISTNAME=       zsh-3.0.5
PKGNAME=	zsh-3.0.5
CATEGORIES=	shells
MASTER_SITES=   ftp://ftp.math.gatech.edu/pub/zsh/ \
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

.include <bsd.port.mk>
