# $OpenBSD: Makefile,v 1.3 2004/11/25 00:37:46 alek Exp $

COMMENT=	"sendmail milter plugin for SpamAssassin spamd"

DISTNAME=	milter-spamd-0.3
PKGNAME=	${DISTNAME}p0
CATEGORIES=	mail
MASTER_SITES=	http://www.benzedrine.cx/

HOMEPAGE=	http://www.benzedrine.cx/milter-spamd.html

MAINTAINER=	Daniel Hartmeier <dhartmei@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

do-configure:
	@perl -pi -e 's,/etc/mi,${SYSCONFDIR}/mi,g' ${WRKSRC}/milter-spamd.{8,c}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/milter-spamd ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/milter-spamd.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
