# $OpenBSD: Makefile,v 1.1.1.1 2000/06/24 14:31:37 naddy Exp $

DISTNAME=	nano-0.9.11
CATEGORIES=	editors
NEED_VERSION=	1.308
HOMEPAGE=	http://www.asty.org/nano/

MAINTAINER=	danh@nfol.com

MASTER_SITES=	${HOMEPAGE}/dist/

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

FLAVORS=	slang
FLAVOR?=

LIB_DEPENDS=	intl.1::devel/gettext
.if ${FLAVOR:L:Mslang}
LIB_DEPENDS+=	slang.14.1::devel/libslang
.endif

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-included-gettext \
			--includedir='${LOCALBASE}/include'
.if ${FLAVOR:L:Mslang}
CONFIGURE_ARGS+=	--with-slang='${LOCALBASE}'
.else
CFLAGS+= 		-DHAVE_TABSIZE
.endif

.include <bsd.port.mk>
