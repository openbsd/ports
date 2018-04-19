# $OpenBSD: Makefile,v 1.6 2018/04/19 16:31:40 rpointel Exp $

COMMENT =		fuzzy hashing program and library

VERSION =		2.14.1
DISTNAME =		ssdeep-${VERSION}

CATEGORIES =		security

SHARED_LIBS =		fuzzy	0.0 # 3.0

HOMEPAGE =		https://ssdeep-project.github.io/ssdeep/

MAINTAINER =		Lawrence Teo <lteo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m ${COMPILER_LIBCXX}

MASTER_SITES =		https://github.com/ssdeep-project/ssdeep/releases/download/release-${VERSION}/

CONFIGURE_STYLE =	gnu

NO_TEST =		yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ssdeep
	${INSTALL_DATA} ${WRKSRC}/sample.c ${PREFIX}/share/examples/ssdeep
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ssdeep
.for file in AUTHORS ChangeLog FILEFORMAT INSTALL NEWS README
	${INSTALL_DATA} ${WRKSRC}/${file} \
		${PREFIX}/share/doc/ssdeep
.endfor

.include <bsd.port.mk>
