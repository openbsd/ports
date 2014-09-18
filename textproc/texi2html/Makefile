# $OpenBSD: Makefile,v 1.24 2014/09/18 00:24:25 nigel Exp $

COMMENT=	texinfo to HTML converter

DISTNAME=	texi2html-1.82
CATEGORIES=	textproc
REVISION=	0

HOMEPAGE=	http://www.nongnu.org/texi2html/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=texi2html/}

CONFIGURE_STYLE= gnu

USE_GMAKE=	Yes
USE_GROFF =	Yes

MAKE_FLAGS+=	texinfohtmldir=${PREFIX}/share/doc/texi2html

BUILD_DEPENDS =	textproc/p5-Text-Unidecode
RUN_DEPENDS =	textproc/p5-Text-Unidecode

TEST_DEPENDS=	textproc/gsed

pre-test:
	@ln -s ${LOCALBASE}/bin/gsed ${WRKDIR}/bin/sed

.include <bsd.port.mk>
