COMMENT=	mailfilter to identify and mark spam

DISTNAME=	mimedefang-3.5

CATEGORIES=	mail

HOMEPAGE=	https://www.mimedefang.org/
SITES=		${HOMEPAGE}releases/

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c m milter perl pthread

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	mail/p5-Mail-Tools \
		mail/p5-MIME-tools \
		security/p5-Crypt-OpenSSL-Random \
		security/p5-IO-Socket-SSL \
		sysutils/p5-Unix-Syslog

# useful optional dependencies
RUN_DEPENDS +=	archivers/p5-Archive-Zip
RUN_DEPENDS +=	www/p5-HTML-Parser

LIB_DEPENDS=	mail/sendmail,-libmilter

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" PERLINSTALLPRIVLIB=$PREFIX/libdata/perl5
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

post-install:
	${INSTALL_DATA} ${WRKSRC}/examples/mimedefang-filter-openbsd-ports \
		${PREFIX}/share/examples/mimedefang/
	${INSTALL_DATA_DIR} ${WRKSRC}/contrib \
		${PREFIX}/share/examples/mimedefang/contrib
	cd ${WRKSRC}/contrib; tar cf - fang.pl greylisting munin | \
		tar xf - -C ${PREFIX}/share/examples/mimedefang/contrib/
	${INSTALL_SCRIPT} ${WRKSRC}/gen-ip-validator.pl \
		${PREFIX}/share/examples/mimedefang

.include <bsd.port.mk>
