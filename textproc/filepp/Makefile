# $OpenBSD: Makefile,v 1.1.1.1 2009/09/04 01:37:37 william Exp $

COMMENT =	cpp-like generic file pre-processor

DISTNAME =	filepp-1.8.0
CATEGORIES =	textproc devel
MASTER_SITES =	${HOMEPAGE}

HOMEPAGE =	http://www.cabaret.demon.co.uk/filepp/
MAINTAINER =	William Yodlowsky <william@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CONFIGURE_STYLE =	gnu dest
NO_BUILD =		Yes
PKG_ARCH =		*
REGRESS_TARGET =	fulltest

post-configure:
	@perl -pi -e 's,\$${DESTDIR},,g;' ${WRKSRC}/filepp

.include <bsd.port.mk>
