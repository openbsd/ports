#   $OpenBSD: Makefile,v 1.18 2008/11/19 10:47:26 pea Exp $

COMMENT=	modules for handling mail with perl

MODULES=	cpan
DISTNAME=	MailTools-2.04
PKGNAME=	p5-Mail-Tools-2.04
CATEGORIES=	mail devel
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Mail/}

MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Time-TimeDate

MAKE_ENV+=	TEST_POD=Yes

# Build examples as well
post-build:
	@cd ${WRKSRC} && for i in examples/*.PL; do perl $$i; done

DIR=${PREFIX}/share/examples/p5-Mail-Tools

post-install:
	${INSTALL_DATA_DIR} ${DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/forwd_demo ${DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/rplyto_demo ${DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/send_demo ${DIR}
	${INSTALL_DATA} ${WRKSRC}/README.demos ${DIR}

.include <bsd.port.mk>
