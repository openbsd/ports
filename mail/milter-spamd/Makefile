# $OpenBSD: Makefile,v 1.1 2004/05/24 07:35:47 dhartmei Exp $

.if !exists(/usr/lib/libmilter.a)
IGNORE="Fatal: milter required, see instructions in DESCR"
.endif

COMMENT=	"sendmail milter plugin for SpamAssassin spamd"

DISTNAME=	milter-spamd-0.3
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
