# $OpenBSD: Makefile,v 1.2 2000/05/18 18:37:59 espie Exp $

DISTNAME=ruby-1.4.4
CATEGORIES = lang
MASTER_SITES=ftp://ftp.netlab.co.jp/pub/lang/ruby/ \
    ftp://ftp.iij.ad.jp/pub/lang/ruby/ \
    ftp://ftp.TokyoNet.AD.JP/pub/misc/ruby/ \
    ftp://ftp.krnet.ne.jp/pub/ruby/ 

MASTER_SITES0=${MASTER_SITES:C,$,doc/,}

BINARCH=${DISTNAME}.tar.gz
MANARCH=ruby-man-1.4.4.tar.gz
DISTFILES=${BINARCH} ${MANARCH}:0
EXTRACT_ONLY=${BINARCH}

HOMEPAGE=http://www.netlab.co.jp/ruby/
MAINTAINER=espie@cvs.openbsd.org
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_CDROM=	Yes
NO_CDROM="st.[ch] is rumored to be public domain, copyright unclear"

LIB_DEPENDS=tcl83.:${PORTSDIR}/lang/tcl/8.3 \
            tk83.:${PORTSDIR}/x11/tk/8.3

GNU_CONFIGURE=	Yes
SEPARATE_BUILD=	concurrent
FAKE=		Yes

CONFIGURE_ENV=YACC=yacc
CONFIGURE_ARGS=${CONFIGURE_SHARED} \
    --with-tcl-include=${PREFIX}/include/tcl8.3 \
    --with-tk-include=${PREFIX}/include/tk8.3 \
    --with-X11-dir=${X11BASE} 

#USE_AUTOCONF=Yes

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


.include <bsd.port.mk>

# Need to do this late, because I want to substitute the fragment as well.
SED_PLIST+=|sed -e 's/REV/1.4/' -e 's/SUB/${ARCH}-openbsd${OSREV}/'
