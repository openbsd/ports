# $OpenBSD: Makefile,v 1.34 2013/01/02 04:19:54 william Exp $

COMMENT=		new MH mail handling program

DISTNAME=		nmh-1.5
REVISION=		0
CATEGORIES=		mail
MASTER_SITES=		${MASTER_SITE_SAVANNAH:=nmh/}
HOMEPAGE=		http://www.nongnu.org/nmh/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto edit ncurses ssl termcap

MAINTAINER=		William Yodlowsky <william@openbsd.org>

SYSCONFDIR=		${PREFIX}/lib/nmh
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--libdir='$${exec_prefix}/libexec' \
			--enable-pop \
			--with-locking=fcntl \
			--with-readline \
			--with-tls
CONFIGURE_ENV=		LIBS="-lncurses"

# needed for replyfilter
RUN_DEPENDS=		mail/p5-MIME-tools \
			textproc/par

FLAVORS=		sasl
FLAVOR?=

CONFIGURE_ENV+=		ac_cv_header_db_h=no
USE_GROFF =		Yes

.if ${FLAVOR:L:Msasl}
MODULES +=		converters/libiconv
WANTLIB +=		sasl2
LIB_DEPENDS+=		security/cyrus-sasl2
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	--with-cyrus-sasl
.endif

NO_REGRESS=		Yes

post-install:
	${INSTALL_SCRIPT} ${PREFIX}/share/doc/nmh/contrib/replyfilter \
		${PREFIX}/bin

.include <bsd.port.mk>
