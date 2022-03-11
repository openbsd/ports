COMMENT =	window manipulation tools
DISTNAME =	wmutils-core-${GH_TAGNAME:C/^v//}

GH_PROJECT =	core
GH_TAGNAME =	v1.4

post-patch:
	sed -i -e 's/wtf/wintf/g' -e 's/lsw/lswin/g' ${WRKSRC}/man/*

do-install:
	${INSTALL_PROGRAM} \
		${WRKBUILD}/{chwb,chwso,ignw,killw,mapw,pfw,wattr,wmp,wmv,wrs,wtp} \
		${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/lsw ${PREFIX}/bin/lswin
	${INSTALL_PROGRAM} ${WRKBUILD}/wtf ${PREFIX}/bin/wintf
	${INSTALL_MAN} \
		${WRKSRC}/man/{chwb,chwso,ignw,killw,mapw,pfw,wattr,wmp,wmv,wrs,wmutils}.1 \
		${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/man/lsw.1 ${PREFIX}/man/man1/lswin.1
	${INSTALL_MAN} ${WRKSRC}/man/wtf.1 ${PREFIX}/man/man1/wintf.1

.include <bsd.port.mk>
