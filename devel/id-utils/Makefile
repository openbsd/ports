# $OpenBSD: Makefile,v 1.8 1999/05/11 03:04:35 marc Exp $

DISTNAME=	id-utils-3.2d
CATEGORIES=	devel

MAINTAINER=	ports@OpenBSD.ORG

MASTER_SITES=	ftp://alpha.gnu.org/gnu/ \
		ftp://ftp.enst.fr/pub/gnu/gnits/

# need to byte-compile a .el file
#
BUILD_DEPENDS=	emacs:${PORTSDIR}/editors/emacs

# International files don't want to be built separately
#
SEPARATE_BUILD=	simple
GNU_CONFIGURE=	yes
USE_GMAKE=	yes

.include <bsd.port.mk>
