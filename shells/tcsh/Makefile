# OpenBSD makefile for:	tcsh
# Version required:     6.07.02
# Date created:		17 November 1997
# Whom:			gene
#
# $OpenBSD: Makefile,v 1.4 1997/12/14 01:08:53 gene Exp $
#

DISTNAME=       tcsh-6.07
PKGNAME=        tcsh-6.07.02
CATEGORIES=	shells
MASTER_SITES=   ftp://ftp.deshaw.com/pub/tcsh/

MAINTAINER=     gene@OpenBSD.ORG

GNU_CONFIGURE=  yes
WRKSRC=         ${WRKDIR}/${PKGNAME}
ALL_TARGET=     all catalogs
INSTALL_TARGET= install install.man
MAN1=		tcsh.1

post-install:
	$(CHOWN) $(BINOWN):$(BINGRP) ${PREFIX}/bin/tcsh
	$(CHOWN) $(BINOWN):$(BINGRP) ${PREFIX}/man/man1/$(MAN1)
	cd ${WRKSRC}; ${INSTALL_DATA} tcsh.C.cat ${PREFIX}/share/nls/C/tcsh.cat
	cd ${WRKSRC}; ${INSTALL_DATA} tcsh.french.cat ${PREFIX}/share/nls/fr_FR.ISO_8859-1/tcsh.cat
	$(LN) -sf ${PREFIX}/share/nls/fr_FR.ISO_8859-1/tcsh.cat ${PREFIX}/share/nls/fr_BE.ISO_8859-1/tcsh.cat
	$(LN) -sf ${PREFIX}/share/nls/fr_FR.ISO_8859-1/tcsh.cat ${PREFIX}/share/nls/fr_CA.ISO_8859-1/tcsh.cat
	$(LN) -sf ${PREFIX}/share/nls/fr_FR.ISO_8859-1/tcsh.cat ${PREFIX}/share/nls/fr_CH.ISO_8859-1/tcsh.cat
	cd ${WRKSRC}; ${INSTALL_DATA} tcsh.german.cat ${PREFIX}/share/nls/de_DE.ISO_8859-1/tcsh.cat
	$(LN) -sf ${PREFIX}/share/nls/de_DE.ISO_8859-1/tcsh.cat ${PREFIX}/share/nls/de_AT.ISO_8859-1/tcsh.cat
	$(LN) -sf ${PREFIX}/share/nls/de_DE.ISO_8859-1/tcsh.cat ${PREFIX}/share/nls/de_CH.ISO_8859-1/tcsh.cat
	$(INSTALL) -d -o ${BINOWN} -g ${BINGRP} -m 755 ${PREFIX}/share/nls/el_GR.ISO_8859-7
	cd ${WRKSRC}; ${INSTALL_DATA} tcsh.greek.cat ${PREFIX}/share/nls/el_GR.ISO_8859-7/tcsh.cat

.include <bsd.port.mk>
