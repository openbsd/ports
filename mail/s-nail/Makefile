# $OpenBSD: Makefile,v 1.6 2013/06/25 02:44:16 william Exp $

COMMENT=		enhanced, MIME capable Berkeley Mail

DISTNAME=		s-nail-14.3.2
DISTFILES=		${DISTNAME:S/./_/g}.tar.gz
CATEGORIES=		mail
HOMEPAGE=		http://sdaoden.users.sourceforge.net/code.html#s-nail
REVISION=		2

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += asn1 c com_err crypto gssapi heimbase
WANTLIB += idn krb5 roken ssl wind

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
