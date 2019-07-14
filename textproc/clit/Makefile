# $OpenBSD: Makefile,v 1.4 2019/07/14 00:39:40 naddy Exp $

COMMENT =		convert Microsoft Reader files to OEBPS packages
V =			1.8
DISTNAME =		clit${V:S/.//}src
REVISION =		1
PKGNAME =		clit-1.8
CATEGORIES =		textproc converters print

HOMEPAGE =		http://www.convertlit.com/

# GPLv2+
PERMIT_PACKAGE =	Yes

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
