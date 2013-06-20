# $OpenBSD: Makefile,v 1.4 2013/06/20 06:54:37 ajacoutot Exp $

COMMENT=		enhanced, MIME capable Berkeley Mail

DISTNAME=		s-nail-14.2.2
DISTFILES=		${DISTNAME:S/./_/g}.tar.gz
CATEGORIES=		mail
HOMEPAGE=		http://sdaoden.users.sourceforge.net/code.html#s-nail
REVISION=		1

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += asn1 c com_err crypto gssapi heimbase
WANTLIB += idn krb5 pthread roken ssl wind

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=s-nail/}
MAINTAINER=		William Yodlowsky <william@openbsd.org>

MODULES=		converters/libiconv

MAKE_FLAGS=		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
                        LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib" \
			SYSCONFDIR=${SYSCONFDIR} \
			CONFIG=CUSTOM

LIB_DEPENDS=		devel/libidn

NO_TEST=		Yes

post-install:
	ln -sf ${TRUEPREFIX}/bin/s-nail ${PREFIX}/bin/nail
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/s-nail
	mv ${DESTDIR}${SYSCONFDIR}/s-nail.rc ${PREFIX}/share/examples/s-nail

.include <bsd.port.mk>
