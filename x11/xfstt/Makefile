# $OpenBSD: Makefile,v 1.2 1999/07/12 08:53:39 jasoni Exp $
# $FreeBSD Id: Makefile,v 1.2 1999/06/28 02:22:43 billf Exp $
#

DISTNAME=		Xfstt-0.9.10
PKGNAME=		xfstt-0.9.10
CATEGORIES=		x11
MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	X11/fonts
EXTRACT_SUFX=		.tgz

MAINTAINER=		jasoni@openbsd.org

WRKSRC=			${WRKDIR}/xfstt0910

USE_X11=		yes

do-install:
	$(INSTALL_PROGRAM) $(WRKSRC)/xfstt $(PREFIX)/bin
	$(INSTALL_MAN) $(WRKSRC)/xfstt.1x $(PREFIX)/man/man1/xfstt.1

post-install:
	strip $(PREFIX)/bin/xfstt
	$(MKDIR) $(PREFIX)/share/doc/xfstt
	$(INSTALL_DATA) $(WRKSRC)/FAQ $(PREFIX)/share/doc/xfstt
	$(INSTALL_DATA) $(WRKSRC)/CHANGES $(PREFIX)/share/doc/xfstt
	$(INSTALL_DATA) $(WRKSRC)/INSTALL $(PREFIX)/share/doc/xfstt
	$(INSTALL_DATA) $(WRKSRC)/THANKS.txt $(PREFIX)/share/doc/xfstt
	${INSTALL_DATA} ${WRKSRC}/README.OpenBSD ${PREFIX}/share/doc/xfstt

.include <bsd.port.mk>
