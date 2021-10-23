# $OpenBSD: Makefile,v 1.54 2021/08/29 10:32:01 sthen Exp $

COMMENT=	mailfilter to identify and mark spam

DISTNAME=	mimedefang-2.85
REVISION=	1

CATEGORIES=	mail

HOMEPAGE=	https://www.mimedefang.org/
MASTER_SITES=	${HOMEPAGE}releases/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c m milter perl pthread

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	mail/p5-Mail-Tools \
		mail/p5-MIME-tools \
		security/p5-Crypt-OpenSSL-Random \
		security/p5-Digest-SHA1 \
		security/p5-IO-Socket-SSL \
		sysutils/p5-Unix-Syslog

# useful optional dependencies
RUN_DEPENDS +=	archivers/p5-Archive-Zip
RUN_DEPENDS +=	www/p5-HTML-Parser

LIB_DEPENDS=	mail/sendmail,-libmilter

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS=	--with-user=_mdefang \
		--with-ipheader \
		--disable-anti-virus \
		--enable-poll

TEST_DEPENDS=	devel/p5-Test-Class \
		devel/p5-Test-Most

TEST_TARGET=	test

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/mimedefang

post-extract:
	cp ${WRKSRC}/examples/suggested-minimum-filter-for-windows-clients \
		${WRKSRC}/examples/mimedefang-filter-openbsd-ports

pre-configure:
	sed -i 's,/var/lib,/var/db,g' ${WRKSRC}/mimedefang.pl.in

post-install:
	${INSTALL_DATA} ${WRKSRC}/SpamAssassin/spamassassin.cf \
		${PREFIX}/share/examples/mimedefang/mail/sa-mimedefang.cf
	${INSTALL_DATA} ${WRKSRC}/examples/mimedefang-filter-openbsd-ports \
		${PREFIX}/share/examples/mimedefang/mail
	${INSTALL_SCRIPT} ${WRKSRC}/gen-ip-validator.pl \
		${PREFIX}/share/examples

.include <bsd.port.mk>
