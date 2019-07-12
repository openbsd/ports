# $OpenBSD: Makefile,v 1.32 2019/07/12 20:47:30 sthen Exp $

COMMENT=	sendmail milter plugin for regular expression filtering

DISTNAME=	milter-regex-1.9
REVISION=	4
CATEGORIES=	mail
MASTER_SITES=	http://www.benzedrine.ch/

HOMEPAGE=	http://www.benzedrine.ch/milter-regex.html

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c pthread milter

LIB_DEPENDS=	mail/sendmail,-libmilter

MAKE_FLAGS=	CPPFLAGS="-I${LOCALBASE}/include" \
		CFLAGS="-Wall -Wstrict-prototypes ${CFLAGS}" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=	Yes

do-configure:
	@perl -pi -e 's,/etc/mi,${SYSCONFDIR}/mi,g' ${WRKSRC}/milter-regex.{8,c}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/milter-regex ${PREFIX}/libexec
	${INSTALL_MAN} ${WRKSRC}/milter-regex.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
