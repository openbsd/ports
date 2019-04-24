# $OpenBSD: Makefile,v 1.5 2019/04/24 16:26:58 sthen Exp $

COMMENT =		convert ASCII text to man page
DISTNAME =		txt2man-1.5.6
REVISION =		3
CATEGORIES =		textproc
HOMEPAGE =		http://mvertes.free.fr/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE:=download/}

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		archivers/bzip2 \
			lang/gawk \
			textproc/groff

NO_TEST =		Yes

.include <bsd.port.mk>
