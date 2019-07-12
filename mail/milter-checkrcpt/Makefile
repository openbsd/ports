# $OpenBSD: Makefile,v 1.8 2019/07/12 20:47:29 sthen Exp $

COMMENT=	sendmail milter plugin for recipient checking

DISTNAME=	milter-checkrcpt-0.3
REVISION=	3
CATEGORIES=	mail
MASTER_SITES=	http://www.benzedrine.ch/

HOMEPAGE=	http://www.benzedrine.ch/milter-checkrcpt.html

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c milter pthread

LIB_DEPENDS=	mail/sendmail,-libmilter

NO_TEST=	Yes

MAKE_FLAGS=	CPPFLAGS="-I${LOCALBASE}/include" \
		CFLAGS="-Wall -Wstrict-prototypes ${CFLAGS}" \
		LDFLAGS="-L${LOCALBASE}/lib"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/milter-checkrcpt ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/milter-checkrcpt.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
