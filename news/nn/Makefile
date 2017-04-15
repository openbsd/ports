# $OpenBSD: Makefile,v 1.16 2017/04/15 14:11:35 naddy Exp $

COMMENT =		menu-based Usenet newsreader
DISTNAME =		nn-6.7.3
REVISION =		3
CATEGORIES =		news
HOMEPAGE =		http://www.nndev.org

MAINTAINER =		Aaron W. Hsu <arcfide@sacrideo.us>

# 4 point NN License a la BSD but with GPL Source Restriction and Freeware
# Requirement
PERMIT_PACKAGE_CDROM =	CDs not sold at cost
PERMIT_PACKAGE_FTP =	Yes

WANTLIB =		c termlib

MASTER_SITES =		ftp://ftp.nndev.org/pub/nn-6.7/ \
                        https://distfiles.nl/
EXTRACT_SUFX =		.tar.Z

USE_GROFF =		Yes
NO_TEST =		Yes
MAKE_ENV =		CC="${CC}"

pre-configure:
	${SUBST_DATA} ${FILESDIR}/config.h ${WRKSRC}/config.h
	cp ${FILESDIR}/[ms]-openbsd.h ${WRKSRC}/conf/

do-install:
	perl -pi.bak -e 's:${TRUEPREFIX}:${PREFIX}:g' ${WRKSRC}/inst
	cd ${WRKSRC} && ./inst n

.include <bsd.port.mk>
