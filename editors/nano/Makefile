# $OpenBSD: Makefile,v 1.3 2000/08/01 13:07:37 naddy Exp $

DISTNAME=	nano-0.9.14
CATEGORIES=	editors
NEED_VERSION=	1.319
HOMEPAGE=	http://www.asty.org/nano/

MAINTAINER=	naddy@openbsd.org

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE} \
		ftp://ftp.asty.org/pub/nano/
MASTER_SITE_SUBDIR=	nano

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
