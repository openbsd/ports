# $OpenBSD: Makefile,v 1.17 2001/11/01 18:34:51 wilfried Exp $

COMMENT=	"RFC 2222 SASL (Simple Authentication and Security Layer)"

DISTNAME=	cyrus-sasl-1.5.24
CATEGORIES=     security
NEED_VERSION=	1.475

MASTER_SITES=	ftp://ftp.andrew.cmu.edu/pub/cyrus-mail/ \
		ftp://ftp.andrew.cmu.edu/pub/cyrus-mail/OLD-VERSIONS/sasl/

HOMEPAGE=	http://asg.web.cmu.edu/sasl/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

SEPARATE_BUILD=		concurrent

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS='${LDFLAGS}'
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static \
			--enable-login \
			--enable-krb4="/usr" \
			--disable-gssapi \
			--includedir="${PREFIX}/include/sasl" \
			--with-pwcheck="/var/pwcheck"

MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/config

FLAVORS=	db
FLAVOR?=

.if ${FLAVOR:L:Mdb}
LIB_DEPENDS+=		db::databases/db
CFLAGS+=		-I${LOCALBASE}/include
LDFLAGS+=		-L${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-dblib=berkeley

post-patch:
	cd ${WRKSRC} && patch < ${FILESDIR}/patch-db
.else
CONFIGURE_ARGS+=	--with-dblib=ndbm
.endif

post-patch:
	@cd ${WRKSRC}/config; \
	${PATCH} --forward --quiet -E < \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltconfig && \
	${PATCH} --forward --quiet -E < \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltmain_sh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sasl
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/sasl
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/sasl

.include <bsd.port.mk>
