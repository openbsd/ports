# $OpenBSD: Makefile,v 1.3 1998/10/08 23:06:21 marc Exp $
#

DISTNAME=       jed0.98-7
PKGNAME=        jed-0.98.7
CATEGORIES=	editors

MAINTAINER=     ports@OpenBSD.ORG

MASTER_SITES=   ftp://space.mit.edu/pub/davis/jed/

LIB_DEPENDS=	slang\\.0\\.993[6-9]:${PORTSDIR}/devel/libslang

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
	${INSTALL_DATA} ${WRKSRC}/lib/* ${PREFIX}/lib/jed/lib 
	${INSTALL_DATA} ${WRKSRC}/info/jed.* ${PREFIX}/info
	rmdir ${PREFIX}/lib/jed/info
.if !defined(NOPORTDOCS)
	${MKDIR} ${PREFIX}/share/doc/jed
	${INSTALL_DATA} ${WRKSRC}/doc/README ${WRKSRC}/doc/*.txt \
		${PREFIX}/share/doc/jed
	if [ ! -f ${PREFIX}/info/dir ]; then \
	  sed -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	fi
	install-info --section="Miscellaneous" \
		--entry="* JED: (jed).			JED editor documentation." \
		${PREFIX}/info/jed.info ${PREFIX}/info/dir
.endif

.include <bsd.port.mk>
