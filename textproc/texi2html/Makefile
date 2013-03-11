# $OpenBSD: Makefile,v 1.23 2013/03/11 11:42:47 espie Exp $

COMMENT=	texinfo to HTML converter

DISTNAME=	texi2html-1.82
CATEGORIES=	textproc

HOMEPAGE=	http://www.nongnu.org/texi2html/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=texi2html/}

CONFIGURE_STYLE= gnu

USE_GMAKE=	Yes
USE_GROFF =	Yes

MAKE_FLAGS+=	texinfohtmldir=${PREFIX}/share/doc/texi2html

TEST_DEPENDS=	textproc/gsed

pre-test:
	@ln -s ${LOCALBASE}/bin/gsed ${WRKDIR}/bin/sed

.include <bsd.port.mk>
