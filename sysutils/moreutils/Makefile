COMMENT=	miscellaneous unix tools

V=		0.70
DISTNAME=	moreutils-$V

CATEGORIES=	sysutils

HOMEPAGE=	https://joeyh.name/code/moreutils/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv2+
PERMIT_PACKAGE= Yes

WANTLIB += c

SITES=		https://git.joeyh.name/index.cgi/moreutils.git/snapshot/

#SITES=		${SITE_DEBIAN:=main/m/moreutils/}
#DISTNAME=	moreutils_$V.orig
#WRKDIST=	${WRKDIR}/moreutils-$V
#EXTRACT_SUFX=	.tar.xz

BUILD_DEPENDS=	textproc/docbook-xsl
RUN_DEPENDS=	devel/p5-IPC-Run \
		devel/p5-Time-Duration \
		devel/p5-Time-TimeDate

MAKE_FLAGS=	DOCBOOKXSL=${LOCALBASE}/share/xsl/docbook
FAKE_FLAGS=	PREFIX=${PREFIX}
USE_GMAKE=	Yes
NO_TEST=	Yes

post-install:
	mv ${PREFIX}/bin/parallel{,.moreutils}
	mv ${PREFIX}/man/man1/parallel{,.moreutils}.1

.include <bsd.port.mk>
