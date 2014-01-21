# $OpenBSD: Makefile,v 1.19 2014/01/21 13:07:26 jung Exp $

COMMENT=	sendmail milter plugin for SpamAssassin spamd

DISTNAME=	milter-spamd-0.6
CATEGORIES=	mail
MASTER_SITES=	http://www.benzedrine.cx/

HOMEPAGE=	http://www.benzedrine.cx/milter-spamd.html

MAINTAINER=	Daniel Hartmeier <dhartmei@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c pthread milter

NO_TEST=	Yes

do-configure:
	@perl -pi -e 's,/etc/mi,${SYSCONFDIR}/mi,g' ${WRKSRC}/milter-spamd.{8,c}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/milter-spamd ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/milter-spamd.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
