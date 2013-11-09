# $OpenBSD: Makefile,v 1.3 2013/11/09 23:19:02 naddy Exp $

COMMENT=		GNU patch

VERSION=		2.7
DISTNAME=		patch-${VERSION}
PKGNAME=		gpatch-${VERSION}
REVISION=		0
CATEGORIES=		devel

HOMEPAGE=		https://www.gnu.org/software/patch/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_GNU:=patch/}

USE_GMAKE=		Yes
USE_GROFF=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--program-prefix=g

TEST_DEPENDS=		shells/bash \
			textproc/gdiff
TEST_FLAGS=		SHELL=${LOCALBASE}/bin/bash

pre-regress:
	@ln -fs ${LOCALBASE}/bin/gdiff ${WRKDIR}/bin/diff

post-install:
	@rm ${PREFIX}/lib/charset.alias

.include <bsd.port.mk>
