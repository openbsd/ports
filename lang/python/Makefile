# $OpenBSD: Makefile,v 1.2 1999/02/23 04:24:10 marc Exp $
#

DISTNAME=	python1.5
PKGNAME=	python-1.5
CATEGORIES=	lang tk80
MASTER_SITES=	ftp://www.python.org/pub/python/src/ \
		ftp://ftp.cwi.nl/pub/python/src/

MAINTAINER=	don@OpenBSD.ORG

LIB_DEPENDS=	${TK_DEPENDS}

EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}
WRKSRC=		${WRKDIR}/Python-1.5
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-fpectl
MAKE_FLAGS=	'OPT=${CFLAGS}'
INSTALL_TARGET=	install
MAN1=		python.1

#
# The standard setup file
#
SETUP_FILE=	Setup

#
# Support for Tk is compiled in by default.
#
WITH_TK?=	yes
.if defined(WITH_TK) && $(WITH_TK) == yes
TK_DEPENDS=	tk80\\.1\\.:${PORTSDIR}/x11/tk80
SETUP_LOCAL=	Setup.tk
.endif

#
# If you want to use Python's thread module, you need to set WITH_THREADS
# to 'yes', and you must have the FreeBSD threading c library (libc_r)
# installed. See 'man 3 pthread' for details on libc_r.
#
# This option is enabled by default.
#
WITH_THREADS?=	yes
.if exists(/usr/lib/libc_r.a) && defined(WITH_THREADS) && ${WITH_THREADS} == yes
CONFIGURE_ARGS+=	--with-thread
.endif

#
# The mpz module is built on machines with a full source tree
#
.if exists(/usr/src/contrib/libgmp/gmp-impl.h)
SETUP_LOCAL+=	Setup.gmp
.endif

post-configure:
	${CP} ${FILESDIR}/${SETUP_FILE} ${WRKSRC}/Modules/Setup
.for file in ${SETUP_LOCAL}
	${CAT} ${FILESDIR}/${file} >> ${WRKSRC}/Modules/Setup.local
.endfor

post-install:
	strip ${PREFIX}/bin/python

.include <bsd.port.mk>
