# $OpenBSD: Makefile,v 1.16 2003/07/16 19:24:25 naddy Exp $

COMMENT=	"C-news"

BROKEN=		does not install cleanly, major fixups required.

DISTNAME=	cnews
PKGNAME=	cnews-cr.g
CATEGORIES=	news
FAKE=No
MASTER_SITES=	ftp://ftp.zoo.toronto.edu/pub/
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}
MAKE_FILE=	makefile

NEWSSPOOL=	${PREFIX}/newsspool
NEWSBIN=	${PREFIX}/news/cnewsbin
NEWSLIB=	${PREFIX}/news/lib
MANDIR=		${PREFIX}/man

do-install:
	rm -f ${PREFIX}/bin/inews
	cp ${WRKSRC}/libdbz/dbz.h ${PREFIX}/include
	cp ${WRKSRC}/libcnews.a ${PREFIX}/lib
	mkdir -p ${NEWSSPOOL}
	-ln -s ${NEWSSPOOL} /var/news
	mkdir -p ${NEWSBIN} ${NEWSLIB}
	chown news:news ${NEWSSPOOL} ${NEWSLIB}
	chown bin:bin ${NEWSBIN}
	cd ${WRKSRC}; \
		echo ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} install | \
		su -m bin
	cd ${WRKSRC}; \
		echo ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} setup | \
		su -m news
	cd ${WRKSRC}; \
		echo ${MAKE} ${MAKE_FLAGS} -f ${MAKE_FILE} ui readpostcheck | \
		su -m bin
	chown news:news ${NEWSBIN}/input/newsspool
	chmod 6755 ${NEWSBIN}/input/newsspool
	install -c -o bin -g bin -m 444 ${WRKSRC}/man/*.1* ${MANDIR}/man1
	install -c -o bin -g bin -m 444 ${WRKSRC}/man/*.5* ${MANDIR}/man5
	install -c -o bin -g bin -m 444 ${WRKSRC}/man/*.8* ${MANDIR}/man8
	@echo ""
	@echo "!!!!!!!!"
	@echo "you MUST change the configuration of this news setup:"
	@echo "	cd to ${NEWSLIB} and change the following files..."
	@echo "mailname, whoami, organization, mailpaths, sys, readnews.ctl, postdefltgroup"
	@echo "	to suit your local system and news topology."
	@echo "!!!!!!!!"
	@echo ""

.include <bsd.port.mk>
