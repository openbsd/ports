# $OpenBSD: Makefile,v 1.1.1.1 2002/06/22 08:55:44 jakob Exp $

COMMENT=	"RFC 2222 SASL (Simple Authentication and Security Layer)"

DISTNAME=	cyrus-sasl-2.1.5
CATEGORIES=     security
NEED_VERSION=	1.531

MASTER_SITES=	ftp://ftp.andrew.cmu.edu/pub/cyrus-mail/ \
		ftp://ftp.andrew.cmu.edu/pub/cyrus-mail/OLD-VERSIONS/sasl/

HOMEPAGE=	http://asg.web.cmu.edu/sasl/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

SEPARATE_BUILD=		concurrent

USE_LIBTOOL=		Yes
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/config ${WRKSRC}/saslauthd/config

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS='${LDFLAGS}'
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

CONFIGURE_ARGS+=	--with-saslauthd="/var/sasl2" \
			--with-staticsasl \
			--enable-login \
			--enable-krb4="/usr" \
			--enable-gssapi="/usr"
CFLAGS+=		-I/usr/include/kerberosV


post-build:
	(cd ${WRKBUILD}/saslauthd; \
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} testsaslauthd)

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sasl
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/sasl
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/sasl
	${INSTALL_DATA} ${WRKBUILD}/lib/libsasl2.a ${PREFIX}/lib
	${INSTALL_PROGRAM} ${WRKBUILD}/saslauthd/testsaslauthd ${PREFIX}/sbin

.include <bsd.port.mk>
