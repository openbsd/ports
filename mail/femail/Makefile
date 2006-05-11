# $OpenBSD: Makefile,v 1.2 2006/05/11 14:45:42 bernd Exp $

COMMENT=	"simple SMTP client"

DISTNAME=	femail-0.97
CATEGORIES=	mail

HOMEPAGE=	http://bulabula.org/femail/

MAINTAINER=	Bernd Ahlers <bernd@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

NO_REGRESS=	Yes

FLAVORS=	static
FLAVOR?=

.if ${FLAVOR:L:Mstatic}
MAKE_ENV=	LDFLAGS="-static"
.else
WANTLIB=	c
.endif

.include <bsd.port.mk>
