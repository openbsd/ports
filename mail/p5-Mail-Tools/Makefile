#   $OpenBSD: Makefile,v 1.3 2000/06/28 13:55:04 espie Exp $

DISTNAME=	MailTools-1.1401
PKGNAME=	p5-Mail-Tools-1.1401
CATEGORIES=	devel mail perl5
NEED_VERSION=	1.308
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	Mail

MAINTAINER=	espie@openbsd.org

RUN_DEPENDS= ${LOCALBASE}/libdata/perl5/site_perl/Net/SMTP.pm::net/p5-libnet

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
CONFIGURE_STYLE=	perl

# Build examples as well
post-build:
	@cd ${WRKSRC} && for i in bin/*.PL; do perl $$i; done

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-MailTools
	${INSTALL_SCRIPT} ${WRKSRC}/bin/forwd_demo ${PREFIX}/share/examples/p5-MailTools
	${INSTALL_SCRIPT} ${WRKSRC}/bin/rplyto_demo ${PREFIX}/share/examples/p5-MailTools
	${INSTALL_SCRIPT} ${WRKSRC}/bin/send_demo ${PREFIX}/share/examples/p5-MailTools
	${INSTALL_DATA} ${WRKSRC}/README.demos ${PREFIX}/share/examples/p5-MailTools

.include <bsd.port.mk>
