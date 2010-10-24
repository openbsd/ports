# $OpenBSD: Makefile,v 1.9 2010/10/24 21:00:29 ajacoutot Exp $

COMMENT=		frontend to mpd written in Python

DISTNAME=		pympd-0.08
REVISION =		2
CATEGORIES=		audio x11

HOMEPAGE=		http://pympd.sourceforge.net/

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pympd/}

MODULES=		lang/python

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::x11/py-gtk2 \
			:desktop-file-utils-*:devel/desktop-file-utils

PKG_ARCH=		*
NO_REGRESS=		Yes

do-configure:
	@perl -pi -e 's,/usr/bin/python,${MODPY_BIN},g; \
		s,PREFIX,${PREFIX},g;' ${WRKSRC}/pympd

.include <bsd.port.mk>
