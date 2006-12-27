# $OpenBSD: Makefile,v 1.2 2006/12/27 10:16:39 steven Exp $

COMMENT=		"GNU make debugger"

PKGNAME=		remake-0.61
DISTNAME=		remake-3.80+dbg-0.61

CATEGORIES=		devel

HOMEPAGE=		http://bashdb.sourceforge.net/remake/mdb.html
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=bashdb/}

MAINTAINER=		Deanna Phillips <deanna@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
WANTLIB=		c readline termcap

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/make ${PREFIX}/bin/remake
	${INSTALL_MAN} ${WRKSRC}/make.1 ${PREFIX}/man/man1/remake.1

pre-regress:
	rm -f ${WRKSRC}/tests/scripts/debugger/trace.orig

.include <bsd.port.mk>
