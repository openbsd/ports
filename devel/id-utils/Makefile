# $OpenBSD: Makefile,v 1.9 1999/09/29 00:43:46 espie Exp $

DISTNAME=	id-utils-3.2d
CATEGORIES=	devel

MAINTAINER=	ports@OpenBSD.ORG

MASTER_SITES=	ftp://alpha.gnu.org/gnu/ \
		ftp://ftp.enst.fr/pub/gnu/gnits/

.if defined(WITH_EMACS) && ${WITH_EMACS}==emacs
# need to byte-compile a .el file
#
BUILD_DEPENDS=	emacs:${PORTSDIR}/editors/emacs
PKGNAME=${DISTNAME}-emacs
CONFIGURE_ARGS+=--with-emacs
PLIST=${PKGDIR}/PLIST.emacs
.elsif defined(WITH_EMACS) && ${WITH_EMACS}==xemacs
BUILD_DEPENDS=	xemacs:${PORTSDIR}/editors/xemacs
PKGNAME=${DISTNAME}-xemacs
CONFIGURE_ARGS+=--with-emacs=xemacs
PLIST=${PKGDIR}/PLIST.xemacs
.else
CONFIGURE_ARGS=--without-emacs
.endif

# International files don't want to be built separately
#
SEPARATE_BUILD=	simple
GNU_CONFIGURE=	yes
USE_AUTOCONF= yes
USE_GMAKE=	yes

.include <bsd.port.mk>
