# $OpenBSD: Makefile,v 1.12 2013/06/17 19:28:36 ajacoutot Exp $

COMMENT=	pop password changing daemon using KerberosV

DISTNAME=	kpoppassd-0.5
REVISION =	5

CATEGORIES=	mail

HOMEPAGE=	http://kpoppassd.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += asn1 c com_err crypto heimbase hx509 krb5 pthread roken
WANTLIB += wind

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kpoppassd/}

WRKDIST=	${WRKDIR}/kpoppassd

ALL_TARGET=	kpoppassd

MAKE_FLAGS=	CC=${CC} \
		INCLUDE="$$(krb5-config --cflags)" \
		KRB5_BASE_LIBS="$$(krb5-config --libs)"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/kpoppassd ${PREFIX}/libexec
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/kpoppassd
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/kpoppassd

.include <bsd.port.mk>
