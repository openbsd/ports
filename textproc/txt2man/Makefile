# $OpenBSD: Makefile,v 1.4 2018/12/12 22:58:57 sthen Exp $

COMMENT =		convert ASCII text to man page
DISTNAME =		txt2man-1.5.6
REVISION =		2
CATEGORIES =		textproc
HOMEPAGE =		http://mvertes.free.fr/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE:=download/}

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		archivers/bzip2 \
			lang/gawk \
			textproc/groff

NO_TEST =		Yes

.include <bsd.port.mk>
