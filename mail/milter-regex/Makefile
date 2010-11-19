# $OpenBSD: Makefile,v 1.19 2010/11/19 07:23:07 espie Exp $

COMMENT=	sendmail milter plugin for regular expression filtering

DISTNAME=	milter-regex-1.7
REVISION =	0
CATEGORIES=	mail
MASTER_SITES=	http://www.benzedrine.cx/

HOMEPAGE=	http://www.benzedrine.cx/milter-regex.html

MAINTAINER=	Daniel Hartmeier <dhartmei@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pthread milter

USE_GROFF =	Yes
NO_REGRESS=	Yes

do-configure:
	@perl -pi -e 's,/etc/mi,${SYSCONFDIR}/mi,g' ${WRKSRC}/milter-regex.{8,c}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/milter-regex ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/milter-regex.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
