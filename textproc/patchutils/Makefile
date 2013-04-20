# $OpenBSD: Makefile,v 1.1.1.1 2013/04/20 17:06:31 sthen Exp $

COMMENT=	small tools to operate on patch files

DISTNAME=	patchutils-0.3.3
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	textproc devel

HOMEPAGE=	http://cyberelk.net/tim/software/patchutils/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	http://cyberelk.net/tim/data/patchutils/stable/

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/gpatch
TEST_DEPENDS=	misc/rpm
TEST_FLAGS=	PATCH=${LOCALBASE}/bin/gpatch
USE_GROFF=	Yes

# only needed for tests
USE_GMAKE=	Yes

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-patch=${LOCALBASE}/bin/gpatch

pre-test:
	perl -pi -e "s|/bin/echo -ne '\\\t'|printf '\\\t'|" \
	    ${WRKSRC}/tests/flip*/run-test

.include <bsd.port.mk>
