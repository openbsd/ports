# $OpenBSD: Makefile,v 1.39 2014/09/17 09:13:13 ajacoutot Exp $

COMMENT=	mailfilter to identify and mark spam

DISTNAME=	mimedefang-2.75
REVISION=	1
CATEGORIES=	mail

HOMEPAGE=	http://www.mimedefang.org/
MASTER_SITES=	${HOMEPAGE}static/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m perl pthread util milter

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	archivers/p5-Archive-Zip \
		mail/p5-MIME-tools \
		security/p5-Digest-SHA1 \
		www/p5-HTML-Parser \
		sysutils/p5-Unix-Syslog

LIB_DEPENDS=	mail/sendmail,-libmilter

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ARGS=	--with-user=_mdefang \
		--with-ipheader \
		--disable-anti-virus \
		--enable-poll

NO_TEST=	Yes

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/mimedefang

post-extract:
	cp ${WRKSRC}/examples/suggested-minimum-filter-for-windows-clients \
		${WRKSRC}/examples/mimedefang-filter-openbsd-ports

pre-configure:
	perl -pi -e 's,/var/lib,/var/db,g' ${WRKSRC}/mimedefang.pl.in

post-install:
	${INSTALL_DATA} ${WRKSRC}/SpamAssassin/spamassassin.cf \
		${PREFIX}/share/examples/mimedefang/mail/sa-mimedefang.cf
	${INSTALL_DATA} ${WRKSRC}/examples/mimedefang-filter-openbsd-ports \
		${PREFIX}/share/examples/mimedefang/mail
	${INSTALL_SCRIPT} ${WRKSRC}/gen-ip-validator.pl \
		${PREFIX}/share/examples

.include <bsd.port.mk>
