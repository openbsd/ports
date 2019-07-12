# $OpenBSD: Makefile,v 1.8 2019/07/12 20:47:55 sthen Exp $

MAINTAINER = 	Marc Espie <espie@openbsd.org>
CATEGORIES =	multimedia
COMMENT =	closed caption subtitles extractor
HOMEPAGE = 	http://ccextractor.sourceforge.net/
V =		0.56
DISTFILES =	ccextractor.${V:S/.//}-src.zip
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=ccextractor/}
DISTNAME =	ccextractor-$V
REVISION =	2
WRKDIST =	${WRKDIR}/ccextractor.$V
WRKSRC =	${WRKDIST}/src

# GPL 2.0
PERMIT_PACKAGE =		Yes

COMPILER =		base-clang ports-gcc base-gcc

DOCDIR = 	${PREFIX}/share/doc/ccextractor
NO_TEST =	Yes

do-configure:
	ln -s ${FILESDIR}/Makefile ${WRKSRC}/Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ccextractor ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DOCDIR}
	for i in ${WRKDIST}/docs/*.TXT; do \
		${INSTALL_DATA} $$i ${DOCDIR}; \
	done

WANTLIB +=	c m ${COMPILER_LIBCXX} 

.include <bsd.port.mk>
