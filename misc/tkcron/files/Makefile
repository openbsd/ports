BINDIR=		${PREFIX}/bin
WISHDIR?=	${BINDIR}

all:		tkcron

tkcron:	
	sed -e "\:/usr/local/bin/wish: s;;${BINDIR}/wish8.4;g" tkcron.tcl > tkcron

install:	all
	${INSTALL} ${INSTALL_COPY} -o ${BINOWN} -g ${BINGRP} -m ${BINMODE} tkcron ${BINDIR}

.include <bsd.own.mk>
