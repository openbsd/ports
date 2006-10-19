# $OpenBSD: Makefile,v 1.1.1.1 2006/10/19 01:06:22 alek Exp $

COMMENT=	"mailfilter to identify and mark spam"

DISTNAME=	mimedefang-2.57
CATEGORIES=	mail perl5

HOMEPAGE=	http://www.mimedefang.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}static/

RUN_DEPENDS=	:p5-MIME-tools-*:mail/p5-MIME-tools \
		:p5-Digest-SHA1-*:security/p5-Digest-SHA1
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-user=_mdefang \
		--disable-anti-virus

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mimedefang
	${INSTALL_DATA} ${WRKSRC}/examples/suggested-minimum-filter-for-windows-clients \
		${PREFIX}/share/examples/mimedefang/mimedefang-filter
	${INSTALL_DATA} ${WRKSRC}/SpamAssassin/spamassassin.cf \
		${PREFIX}/share/examples/mimedefang/sa-mimedefang.cf
	${INSTALL_SCRIPT} ${FILESDIR}/rc.mimedefang \
		${PREFIX}/share/examples/mimedefang/

.include <bsd.port.mk>
