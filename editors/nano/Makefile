# $OpenBSD: Makefile,v 1.38 2004/03/31 23:00:32 naddy Exp $

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
	perl -i -pe 's:\$$SYSCONFDIR:${SYSCONFDIR}:g' \
		${PREFIX}/man/man5/nanorc.5 \
		${PREFIX}/man/man1/nano.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nano
	${INSTALL_DATA} ${WRKSRC}/nanorc.sample ${PREFIX}/share/examples/nano

.include <bsd.port.mk>
