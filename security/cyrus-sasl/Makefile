# $OpenBSD: Makefile,v 1.2 2000/06/26 19:36:00 jakob Exp $

DISTNAME=	cyrus-sasl-1.5.21
CATEGORIES=     security
NEED_VERSION=	1.302
MASTER_SITES=	ftp://ftp.andrew.cmu.edu/pub/cyrus-mail/ \
		ftp://ftp.andrew.cmu.edu/pub/cyrus-mail/OLD-VERSIONS/sasl/

HOMEPAGE=	http://asg.web.cmu.edu/sasl/

MAINTAINER=	jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--includedir=${PREFIX}/include/sasl \
			--enable-krb4=/usr \
			--enable-static \
			--enable-shared
SEPARATE_BUILD=		concurrent

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sasl
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/sasl
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt  ${PREFIX}/share/doc/sasl

.include <bsd.port.mk>
