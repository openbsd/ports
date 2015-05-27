# $OpenBSD: Makefile,v 1.1.1.1 2015/05/27 16:50:40 czarkoff Exp $

COMMENT =		convert Microsoft Reader files to OEBPS packages
V =			1.8
DISTNAME =		clit${V:S/.//}src
PKGNAME =		clit-1.8
CATEGORIES =		textproc converters print

HOMEPAGE =		http://www.convertlit.com/

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =	drm (see http://www.convertlit.com/legal.php)
PERMIT_PACKAGE_FTP =	Yes

WANTLIB =		c

MASTER_SITES =		${HOMEPAGE}
EXTRACT_SUFX =		.zip

WRKDIST =		${WRKDIR}/${DISTNAME:src=}

BUILD_DEPENDS =		math/libtommath

post-patch:
	mv ${WRKDIR}/lib ${WRKDIST}
	rm ${WRKDIST}/lib/Makefile ${WRKDIST}/Makefile
	cp ${FILESDIR}/Makefile ${WRKDIST}

.include <bsd.port.mk>
