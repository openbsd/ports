#   $OpenBSD: Makefile,v 1.27 2019/07/12 20:47:35 sthen Exp $

COMMENT=	modules for handling mail with perl

V=		2.14

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	MailTools-${V}
PKGNAME=	p5-Mail-Tools-${V}
CATEGORIES=	mail devel
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Mail/}

MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Time-TimeDate

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
