# $OpenBSD: Makefile,v 1.8 2001/03/05 17:20:08 brad Exp $

DISTNAME=	cyrus-sasl-1.5.24
CATEGORIES=     security
NEED_VERSION=	1.336
MASTER_SITES=	ftp://ftp.andrew.cmu.edu/pub/cyrus-mail/ \
		ftp://ftp.andrew.cmu.edu/pub/cyrus-mail/OLD-VERSIONS/sasl/

HOMEPAGE=	http://asg.web.cmu.edu/sasl/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static \
		 --enable-login \
		 --enable-krb4="/usr" \
		 --includedir="${PREFIX}/include/sasl" \
		 --with-pwcheck="/var/pwcheck"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sasl
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/sasl
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/sasl

.include <bsd.port.mk>
