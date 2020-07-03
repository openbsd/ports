#   $OpenBSD: Makefile,v 1.29 2020/07/03 21:45:27 sthen Exp $

COMMENT=	modules for handling mail with perl

V=		2.21

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	MailTools-${V}
PKGNAME=	p5-Mail-Tools-${V}
CATEGORIES=	mail devel
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Mail/}
REVISION=	0

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
