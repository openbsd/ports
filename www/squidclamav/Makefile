# $OpenBSD: Makefile,v 1.3 2013/11/05 15:05:32 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	clamd-based virus scanner for c-icap

DISTNAME=	squidclamav-6.10
REVISION=	1

CATEGORIES=	www

HOMEPAGE=	http://squidclamav.darold.net/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=squidclamav/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/c-icap/c-icap>=0.3.1

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-c-icap=${LOCALBASE}

FAKE_FLAGS=	DEFAULT_DOC_DIR=${PREFIX}/share/doc/squidclamav

pre-configure:
	perl -pi -e 's,/etc/squidclamav.conf,${SYSCONFDIR}/squidclamav.conf,' \
	    ${WRKSRC}/src/squidclamav.h

post-install:
	rm -f ${PREFIX}/lib/c_icap/squidclamav.la
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/squidclamav/
	mv ${WRKINST}/etc/squidclamav.conf ${PREFIX}/share/examples/squidclamav/

.include <bsd.port.mk>
