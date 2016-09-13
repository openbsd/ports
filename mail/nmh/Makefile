# $OpenBSD: Makefile,v 1.40 2016/09/13 16:12:14 naddy Exp $

COMMENT=		new MH mail handling program

DISTNAME=		nmh-1.6
CATEGORIES=		mail
MASTER_SITES=		${MASTER_SITE_SAVANNAH:=nmh/}
HOMEPAGE=		http://www.nongnu.org/nmh/
REVISION=		0

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto edit iconv ssl termcap

MAINTAINER=		William Yodlowsky <william@openbsd.org>

SYSCONFDIR=		${PREFIX}/lib/nmh
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--libdir='$${exec_prefix}/libexec' \
			--with-locking=fcntl \
			--with-readline \
			--with-tls

LIB_DEPENDS =		converters/libiconv
# needed for replyfilter
RUN_DEPENDS=		mail/p5-MIME-tools \
			textproc/par \
			www/w3m

FLAVORS=		sasl
FLAVOR?=

CONFIGURE_ENV=		ac_cv_header_db_h=no \
			CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
USE_GROFF =		Yes

.if ${FLAVOR:Msasl}
WANTLIB +=		sasl2
LIB_DEPENDS+=		security/cyrus-sasl2
CONFIGURE_ARGS+=	--with-cyrus-sasl
.endif

NO_TEST=		Yes

post-install:
	${INSTALL_SCRIPT} ${PREFIX}/share/doc/nmh/contrib/replyfilter \
		${PREFIX}/bin

.include <bsd.port.mk>
