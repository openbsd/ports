# $OpenBSD: Makefile,v 1.4 1998/11/20 04:58:05 marc Exp $
#

DISTNAME=       jed0.98-7
PKGNAME=        jed-0.98.7
CATEGORIES=	editors

MAINTAINER=     ports@OpenBSD.ORG

MASTER_SITES=   ftp://space.mit.edu/pub/davis/jed/

LIB_DEPENDS=	slang.1.22:${PORTSDIR}/devel/libslang

# comment out the next line if you don't want the X version of JED.
XJED=		xjed

GNU_CONFIGURE=  yes
CONFIGURE_ENV=	JED_ROOT=${PREFIX}/lib/jed
ALL_TARGET=     all getmail ${XJED}
INSTALL_TARGET= install
WRKSRC=         ${WRKDIR}/jed

pre-install:
	ln -sf ${WRKSRC}/autoconf/mkinsdir.sh  ${WRKSRC}/

post-install:
	strip ${PREFIX}/bin/jed
	strip ${PREFIX}/bin/rgrep
	strip ${PREFIX}/lib/jed/bin/getmail
.if defined(XJED)
	strip ${PREFIX}/bin/xjed
.endif
	${INSTALL_DATA} ${WRKSRC}/lib/*.sl ${PREFIX}/lib/jed/lib 
	${INSTALL_DATA} ${WRKSRC}/lib/*.hlp ${PREFIX}/lib/jed/lib 
	${INSTALL_DATA} ${WRKSRC}/lib/*.com ${PREFIX}/lib/jed/lib 
	${INSTALL_DATA} ${WRKSRC}/lib/jed.rc ${PREFIX}/lib/jed/lib 
	${MKDIR} ${PREFIX}/lib/jed/lib/tm
	${INSTALL_DATA} ${WRKSRC}/lib/tm/* ${PREFIX}/lib/jed/lib/tm 
	${INSTALL_DATA} ${WRKSRC}/info/jed.* ${PREFIX}/info
	rmdir ${PREFIX}/lib/jed/info
.if !defined(NOPORTDOCS)
	${MKDIR} ${PREFIX}/share/doc/jed
	${INSTALL_DATA} ${WRKSRC}/doc/README ${WRKSRC}/doc/*.txt \
		${PREFIX}/share/doc/jed
	rmdir ${PREFIX}/lib/jed/doc
	if [ ! -f ${PREFIX}/info/dir ]; then \
	  sed -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	fi
	install-info --section="Editors" \
		--entry="* JED: (jed). 		JED editor documentation." \
		${PREFIX}/info/jed.info ${PREFIX}/info/dir
.endif

.include <bsd.port.mk>
