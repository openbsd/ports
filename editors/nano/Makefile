# $OpenBSD: Makefile,v 1.36 2004/02/20 21:30:38 naddy Exp $

COMMENT=	"small, easy to use editor"

DISTNAME=	nano-1.2.3
CATEGORIES=	editors
HOMEPAGE=	http://www.nano-editor.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

MASTER_SITES=	http://www.nano-editor.org/dist/v1.2/ \
		http://www.ewtoo.org/~astyanax/nano/dist/v1.2/

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

FLAVORS=	slang
FLAVOR?=

MODULES=	gettext

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.57
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--enable-all

.if ${FLAVOR:L:Mslang}
LIB_DEPENDS+=	slang.14::devel/libslang
CONFIGURE_ARGS+=--with-slang="${LOCALBASE}"
.endif

# prevent autotools rebuild cascade
post-patch:
	@touch -r ${WRKSRC}/aclocal.m4 ${WRKSRC}/configure.ac

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nano
	${INSTALL_DATA} ${WRKSRC}/nanorc.sample ${PREFIX}/share/examples/nano

.include <bsd.port.mk>
