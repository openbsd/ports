# $OpenBSD: Makefile,v 1.7 2000/10/10 00:40:48 espie Exp $

VERSION=1.4.6
DISTNAME=ruby-${VERSION}
CATEGORIES = lang
NEED_VERSION=	1.310
MASTER_SITES=ftp://ftp.netlab.co.jp/pub/lang/ruby/ \
    ftp://ftp.iij.ad.jp/pub/lang/ruby/ \
    ftp://ftp.TokyoNet.AD.JP/pub/misc/ruby/ \
    ftp://ftp.krnet.ne.jp/pub/ruby/ 

MASTER_SITES0=${MASTER_SITES:C,$,doc/,}

BINARCH=${DISTNAME}.tar.gz
MANARCH=ruby-man-${VERSION}.tar.gz
DISTFILES=${BINARCH} ${MANARCH}:0
EXTRACT_ONLY=${BINARCH}

HOMEPAGE=http://www.netlab.co.jp/ruby/
MAINTAINER=	Marc Espie <espie@openbsd.org>
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_CDROM=	Yes
NO_CDROM="st.[ch] is rumored to be public domain, copyright unclear"

LIB_DEPENDS=tcl83.:${PORTSDIR}/lang/tcl/8.3 \
            tk83.:${PORTSDIR}/x11/tk/8.3

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=	concurrent

CONFIGURE_ENV=YACC=yacc
CONFIGURE_ARGS=${CONFIGURE_SHARED} \
    --with-tcl-include=${PREFIX}/include/tcl8.3 \
    --with-tk-include=${PREFIX}/include/tk8.3 \
    --with-X11-dir=${X11BASE} 

USE_AUTOCONF=Yes

# Force rebuild of parse.c with yacc
post-extract: 
	cd ${WRKSRC} && rm parse.c 

# buglet fix: lex.c should be in object dir
post-configure:
	cp ${WRKSRC}/lex.c ${WRKBUILD}/lex.c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ruby
	cd ${PREFIX}/share/doc && \
	tar -s/ruby-man-1.4/ruby/ -zxf ${FULLDISTDIR}/${MANARCH}


REV=1.4
SUB=${ARCH}-openbsd${OSREV}
SUBST_VARS=SUB REV

.include <bsd.port.mk>
