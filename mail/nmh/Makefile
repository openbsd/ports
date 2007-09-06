# $OpenBSD: Makefile,v 1.25 2007/09/06 18:57:34 naddy Exp $

COMMENT=	new MH mail handling program

DISTNAME=		nmh-1.2
CATEGORIES=     	mail
MASTER_SITES=		http://download.savannah.nongnu.org/releases/nmh/
HOMEPAGE=		http://www.nongnu.org/nmh/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c termcap

SYSCONFDIR=		${PREFIX}/lib/nmh
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--libdir='$${exec_prefix}/libexec' \
			--enable-apop \
			--with-locking=fcntl

FLAVORS=		sasl
FLAVOR?=

CONFIGURE_ENV+=		ac_cv_header_db_h=no
USE_GMAKE=		Yes

.if ${FLAVOR:L:Msasl}
LIB_DEPENDS+=		sasl2::security/cyrus-sasl2
CPPFLAGS+=		-I${LOCALBASE}/include/sasl
CONFIGURE_ARGS+=	--with-cyrus-sasl=${PREFIX}
.endif

NO_REGRESS=		Yes

.include <bsd.port.mk>
